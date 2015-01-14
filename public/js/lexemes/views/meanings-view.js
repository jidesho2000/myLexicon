myLexicon.ViewClasses.MeaningsView = Backbone.View.extend({
	tagName: 'div',
	
	newMeaningFormTemplate: _.template($('#newMeaning').html()),
	infoTemplate: _.template($('#meaningsInfo').html()),
	
	events: {
		"click #toggleMeaningForm": "toggleMeaningForm",
		"click #submitNewMeaning": "submitNewMeaning",
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
		$("#lexicon").html(this.$el);
	},
	
	renderInfoBar: function() {
		this.$el.remove("#meaningsInfo");
		this.$el.prepend(this.infoTemplate({"meaningCount": this.collection.length}));
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
			$("#meaningsInfo").after(this.newMeaningFormTemplate());
		}
	},
	
	submitNewMeaning: function(e) {
		e.preventDefault();
		var form = $(e.currentTarget).parents("form")[0];
		var formData = {};
		$(form).children("input").each(function(index, element) {
			formData[element.id] = element.value; 
		});
		
		this.collection.createMeaning(formData);
		this.toggleMeaningForm();
	},
});