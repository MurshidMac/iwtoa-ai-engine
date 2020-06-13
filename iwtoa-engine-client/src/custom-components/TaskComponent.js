import React, { Component } from 'react';

class TaskComponent extends Component {
    render() {
        return (
            <div className="govuk-grid-row">
                                        <div className="govuk-grid-column-full">
                                            Date:{this.props.dateCompleted}
                                        </div>
                                    </div>
                                    <div className="govuk-grid-row">
                                        <div className="govuk-grid-column-full">
                                            {this.props.defectCompleted}
                                        </div>
            </div>
        );
    }
}

export default TaskComponent;