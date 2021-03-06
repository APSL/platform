// Copyright (c) 2015 Spinpunch, Inc. All Rights Reserved.
// See License.txt for license information.

module.exports = React.createClass({
    handleClick: function() {
        this.props.handleClick(this.props.username);
    },
    render: function() {
        var icon;
        if (this.props.id != null) {
            icon = <span><img className="mention-img" src={"/api/v1/users/" + this.props.id + "/image"}/></span>;
        } else {
            icon = <span><i className="mention-img fa fa-users fa-2x"></i></span>;
        }
        return (
            <div className="mentions-name" onClick={this.handleClick}>
                <div className="pull-left">{icon}</div>
                <div className="pull-left mention-align"><span>@{this.props.username}</span><span className="mention-fullname">{this.props.secondary_text}</span></div>
            </div>
        );
    }
});
