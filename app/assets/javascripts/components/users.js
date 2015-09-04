var Users = React.createClass({
  render: function() {
    // console.log('hello world!');
    // return React.DOM.div({
    //   className: 'records'
    // }, 
    // React.DOM.h2({
    //   className: 'title'
    // }, 'Users')
    // );
    var users = this.props.data; //array of JS objects.

    return (
      <div className='users_content'>
        hello world
      </div>
    );
  }
});
React.render(
  <Users />, 
  document.getElementById('content')
)