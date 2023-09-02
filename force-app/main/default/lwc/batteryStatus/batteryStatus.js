import { LightningElement } from 'lwc';

export default class BatteryStatus extends LightningElement {

    batteryPercentage = 0;
    connectedCallback() {
        navigator.getBattery().then((battery) => {

            console.log(battery);
            console.log(battery.level * 100 + '%');
            this.batteryPercentage = battery.level * 100 + '%';
        })

    }


}