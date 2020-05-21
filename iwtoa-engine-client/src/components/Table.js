import React, { Component } from 'react';


function DateList(props) {
    const datelist = props.datelist;
    console.log('This is the date list ', datelist)
    const listtableHead = datelist.map((date) =>
        <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col" key={date.toString()}>
            {date}
        </th>
    );
    return (
        <tr className="govuk-table__row">
            <th className="govuk-table__header" scope="col">Team member</th>
            {/* <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-09</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-10</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-11</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-12</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-13</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-14</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-15</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-16</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-17</th>
            <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-18</th> */}
            {listtableHead}
        </tr>
    );
}

class Row{
    key;
    solvedTaskList;
    userSkills;
    constructor(key, solvedTaskList,userSkills){
        this.key = key;
        this.solvedTaskList = solvedTaskList;
        this.userSkills = userSkills;
    }
}

function RowList(props) {

    const solvedTaskList = props.solveTaskMap;
    console.log('This is the solved task map', solvedTaskList)
    let map = new Array();

    for (let key in solvedTaskList) {
        console.log('The key and valye ', key, solvedTaskList[key], i);
        let element = new Row()
        map.push(element);
    }

    console.log(map);

    const rowlist = datelist.map((row) => {
            return (<tr className="govuk-table__row">
                 <th className="govuk-table__header" scope="row">
                <div className="row">
                    <div className="col-1">
                        <div className="skillColor"></div>
                    </div>
                    <div className="col-1">
                        <div className="skillColor1"></div>
                    </div>
                    <div className="col-1">
                        <div className="skillColor2"></div>
                    </div>
                    <div className="col">
                        {key}
                </div>
                </div>
                <div className="row">
                    <div className="col-1">
                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                    </div>
                    <div className="col-1">
                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                    </div>
                    <div className="col-1">
                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                    </div>
                </div>
            </th>
            <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="2">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle" >
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor1"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                </div>
                            </div>
                            <div className="row">
                                <div className="col-12">
                                    <h5 className="card-title govuk-body-s"> Expand Tax</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="col-12">
                                    <div className="govuk-caption-m govuk-body-s"> <img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-10</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            </tr>)
    });
    // const rowlist = solvedTaskList.map((user) => 
    //     <tr></tr>
    // );

    return (
        <tr className="govuk-table__row">
            <th className="govuk-table__header" scope="row">
                <div className="row">
                    <div className="col-1">
                        <div className="skillColor"></div>
                    </div>
                    <div className="col-1">
                        <div className="skillColor1"></div>
                    </div>
                    <div className="col-1">
                        <div className="skillColor2"></div>
                    </div>
                    <div className="col">
                        Murshid
                </div>
                </div>
                <div className="row">
                    <div className="col-1">
                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                    </div>
                    <div className="col-1">
                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                    </div>
                    <div className="col-1">
                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                    </div>
                </div>
            </th>
            <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="2">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle" >
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor1"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                </div>
                            </div>
                            <div className="row">
                                <div className="col-12">
                                    <h5 className="card-title govuk-body-s"> Expand Tax</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="col-12">
                                    <div className="govuk-caption-m govuk-body-s"> <img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-10</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="2">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>

                            </div>
                            <div className="row ">
                                <div className="col-12">
                                    <h5 className="card-title govuk-body-s "> Improve Sales </h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="col-12">
                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-12</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="0">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>
                            </div>
                            <div className="row ">
                                <div className="col">
                                    <h5 className="card-title govuk-body-s textSize"><span title="Improve sales">Improve sales</span></h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="">
                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric">
                <div className="row">
                    <div className="col ">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>
                                <div className="col">
                                    <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>
                                <div className="col">
                                    <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>
                                <div className="col">
                                    <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>
                                <div className="col">
                                    <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td className="govuk-table__cell govuk-table__cell--numeric">
                <div className="row">
                    <div className="col">
                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                            <div className="row">
                                <div className="col-1">
                                    <div className="skillColor2"></div>
                                </div>
                                <div className="col-1">
                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                </div>
                                <div className="col">
                                    <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                </div>
                            </div>
                            <div className="row">
                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
           
        </tr>)
}



class Table extends Component {

    constructor(props) {
        super(props);
    }


    render() {
        return (
            <div className="govuk-width-container tableoverflowXAxis ">
                <label className="govuk-label govuk-error-colour">{this.props.data.status}</label>
                <table className="govuk-table">
                    <thead className="govuk-table__head">
                        <DateList datelist={this.props.data.dateList} />
                    </thead>
                    <tbody className="govuk-table__body">
                        <RowList solveTaskMap={this.props.data.solveTaskMap} />
                        <tr className="govuk-table__row">
                            <th className="govuk-table__header" scope="row">
                                <div className="row">
                                    <div className="col-1">
                                        <div className="skillColor"></div>
                                    </div>
                                    <div className="col-1">
                                        <div className="skillColor3"></div>
                                    </div>
                                    <div className="col-1">
                                        <div className="skillColor4"></div>
                                    </div>
                                    <div className="col">
                                        Hasmath
                                </div>
                                </div>
                                <div className="row">
                                    <div className="col-1">
                                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                                    </div>
                                    <div className="col-1">
                                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                                    </div>
                                    <div className="col-1">
                                        <img className="imageSize" src="/assets/images/other/star.png"></img>
                                    </div>
                                </div>
                            </th>
                            <td className="govuk-table__cell govuk-table__cell--numeric " >
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric">
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric " >
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric">
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric " >
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric " >
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric">
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric">
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric">
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td className="govuk-table__cell govuk-table__cell--numeric">
                                <div className="row">
                                    <div className="col">
                                        <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                            <div className="row">
                                                <div className="col-1">
                                                    <div className="skillColor4"></div>
                                                </div>
                                                <div className="col-1">
                                                    <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                </div>
                                                <div className="col">
                                                    <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                </div>
                                            </div>
                                            <div className="row">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        );
    }
}

export default Table;