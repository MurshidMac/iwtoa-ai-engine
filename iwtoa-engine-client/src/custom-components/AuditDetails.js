import React, { Component } from 'react';
import Completed from '../../public/Complete.png';
import Pending from '../../public/Pending.png';

var bgColors = {
    "Black": "#0b0c0c",
    "Grey": "#6f777b",
};

class AuditDetails extends Component {

    constructor(props) {
        super(props);
    }


    tastComponentCompleted(defects) {
        return (<div>
            {
                defects.map((data, index) =>
                    <div key={index}>
                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-full">
                                <div className="govuk-grid-row">
                                    <div className="govuk-grid-column-one-quarter">
                                        <img src={Completed} className="govuk-zaizi-completed" />
                                    </div>
                                    <div className="govuk-grid-column-one-half">
                                        <span style={{ color: bgColors.Grey }}>Date: </span><span>{data.dateandtime}</span><br />
                                        <span>{data.tasknote}</span>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                )}
        </div>
        )
    }

    tastComponentPending(defects) {

        return (<div>
            {
                defects.map((data, index) =>
                    <div key={index}>

                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-full">
                                <div className="govuk-grid-row">
                                    <div className="govuk-grid-column-one-quarter">
                                        <img src={Pending} className="govuk-zaizi-completed" />
                                    </div>
                                    <div className="govuk-grid-column-one-half">
                                        <span style={{ color: bgColors.Grey }}>Date: </span><span>{data.dateandtime}</span><br />
                                        <span>{data.tasknote}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                )}
        </div>
        )
    }

    render() {
        // console.log(this.props.defectCompleted)
        return (
            <div className="govuk-accordion__section ">
                <div className="govuk-accordion__section-header">
                    <h2 className="govuk-accordion__section-heading">
                        <span className="govuk-accordion__section-button" id="accordion-default-heading-1">
                            {this.props.address}
                        </span>
                    </h2>
                </div>
                <div id="accordion-default-content-1" className="govuk-accordion__section-content" aria-labelledby="accordion-default-heading-1">

                    <h3 className="govuk-accordion__section-heading govuk-heading-s" id="accordion-default-heading-1">Completed task(s)</h3>
                    <div className='govuk-body'>
                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-full">
                                {
                                    this.tastComponentCompleted(this.props.defectCompleted)
                                }
                            </div>
                        </div>
                    </div>
                    <h3 className="govuk-accordion__section-heading govuk-heading-s" id="accordion-default-heading-1">Pending task(s)</h3>
                    <div className='govuk-body'>
                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-full">
                                {
                                    this.tastComponentPending(this.props.defectPending)
                                }
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default AuditDetails;