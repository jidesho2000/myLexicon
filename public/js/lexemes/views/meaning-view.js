myLexicon.ViewClasses.MeaningView = Backbone.View.extend({
	tagName: 'div',
	className: 'meaningContainer',
	template: _.template($('#meaningTemplate').html()),
	
	render: function() {
		this.$el.empty();
		this.renderLexeme(this.model.get('targetid'));
		this.renderLexeme(this.model.get('baseid'));
		this.$el.append(this.template(this.model.attributes));
		this.$el.append("ID: " + this.model.get('id'));
		return this;
	},
	
	renderLexeme: function(lexemeId) {
		var lexeme = myLexicon.Collections.lexemes.findLexeme(lexemeId);
		var lexemeView = new myLexicon.ViewClasses.LexemeView({model: lexeme});
		this.$el.append(lexemeView.render().el);
		return this;
	},
});