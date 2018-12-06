import React from 'react'

const CanvasJSReact = require('../canvasjs.react');
const CanvasJS = CanvasJSReact.CanvasJS;
const CanvasJSChart = CanvasJSReact.CanvasJSChart;

class RaceGraph extends React.Component {	

	render() {
        let state = this.props.state
		const options = {
			animationEnabled: true,
			exportEnabled: true,
			theme: "dark2", // "light1", "dark1", "dark2"
			title:{
				text: "Racial Demographics"
			},
			data: [{
				type: "pie",
				indexLabel: "{label}: {y}%",		
				startAngle: -90,
				dataPoints: [
					{ y: state.white, label: "White" },
					{ y: state.black, label: "Black" },
					{ y: state.hispanic, label: "Hispanic" },
					{ y: state.asian, label: "Asian" },
                    { y: state.native_indian_alaska, label: "American Indian/Alaska Native" },
                    { y: state.two_plus_race, label: "Two or More Races" },
					{ y: state.unaccounted_race, label: "Unaccounted" }	
				]
			}]
		}
		
		return (
		<div>
			<CanvasJSChart options = {options} 
				onRef={ref => this.chart = ref}
			/>
			{/*You can get reference to the chart instance as shown above using onRef. This allows you to access all chart properties and methods*/}
		</div>
		);
	}
}
export default RaceGraph

// export default RaceGraph