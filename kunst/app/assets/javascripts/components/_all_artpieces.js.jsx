var AllArtpieces = React.createClass({

    componentDidMount() {
        $.getJSON('/api/v1/artpieces.json', (response) => { this.setState({ artpieces: response }) });
    },

    getInitialState() {
        return { artpieces: [] }
    },

    render() {
        var artpieces = this.state.artpieces.map((artpiece) => {
            return(
                <div key={artpiece.id}>
                    <h3>{artpiece.name}</h3>
                    <p>{artpiece.description}</p> </div> )
        });
        return(
            <div> {artpieces} </div>
        )
    }
});
