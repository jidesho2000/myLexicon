myLexicon.ViewClasses.MeaningsView = Backbone.View.extend({
	tagName: 'div',
	
	newMeaningTemplate: _.template($('#newMeaningTemplate').html()),
	newExampleTemplate: _.template($('#newExampleTemplate').html()),
	infoTemplate: _.template($('#meaningsInfo').html()),
	paginationTemplate: _.template($('#paginationTemplate').html()),
	
	exampleId: 1,
	
	events: {
		"click #toggleMeaningForm": "toggleMeaningForm",
		"click #submitNewMeaning": "submitNewMeaning",
		"click #anotherExample": "anotherExample",
	},

	initialize: function(collection) {
		this.collection = collection;
		this.listenTo(this.collection, 'add', this.renderMeaning);
	},
	
	render: function() {
		this.$el.empty();
		this.renderInfoBar();
		this.collection.each(function(meaning) {
			this.renderMeaning(meaning);
		}, this);
		this.renderPaginationBar();
		$("#lexicon").html(this.$el);
	},
	
	renderInfoBar: function() {
		this.$el.remove("#meaningsInfo");
		this.$el.prepend(this.infoTemplate({"meaningCount": this.collection.getLength()}));
		return this;
	},
	
	renderPaginationBar: function() {
		var currentPage = this.collection.state.currentPage;
		var previousPage = -1;
		if (this.collection.hasPreviousPage()) {
			previousPage = currentPage - 1;
		}
		
		var lastPage = this.collection.state.lastPage;
		var nextPage = -1;
		if (this.collection.hasNextPage()) {
			nextPage = currentPage + 1;
		}
		
		this.$el.prepend(this.paginationTemplate({
			previous: previousPage,
			next: nextPage,
			last: lastPage,
		}));
		return this;
	},

	renderMeaning: function(meaning) {
		var meaningView = new myLexicon.ViewClasses.MeaningView({
			model: meaning,
		});
		this.$el.append(meaningView.render().el);
	},
	
	toggleMeaningForm: function() {
		if ($("#newMeaning").length) {
			$("#newMeaning").remove();
			$("#toggleMeaningForm").text("Add Meaning");
		} else {
			$("#toggleMeaningForm").text("Hide Form");
			$("#meaningsInfo").after(this.newMeaningTemplate());
			$("#anotherExample").before(this.newExampleTemplate({exampleId: this.exampleId}));
			this.exampleId++;
			$("#newMeaning select").val(this.collection.getPreviouslyEnteredLexemeType());
		}
	},
	
	anotherExample: function(e) {
		e.preventDefault();
		$("#anotherExample").before(this.newExampleTemplate({exampleId: this.exampleId}));
		this.exampleId++;
	},
	
	submitNewMeaning: function(e) {
		e.preventDefault();
		var form = $(e.currentTarget).parents("form")[0];
		var formData = {};
		$(form).find(".lexeme-input").each(function(index, element) {
			formData[element.id] = element.value; 
		});
		this.collection.createMeaning(formData);
		$("#newMeaning").find(".example-input").val(null);
//		this.toggleMeaningForm();
	},
});