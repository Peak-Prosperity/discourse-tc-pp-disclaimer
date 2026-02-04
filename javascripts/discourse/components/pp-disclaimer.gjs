import Component from "@glimmer/component";
import { htmlSafe } from "@ember/template";
const FEATURED_CLASS = "pp-disclaimer";

export default class PpDisclaimer extends Component {
    get mustShow() {
        return settings.show_in_category_ids.split('|').map(str => parseInt(str, 10)).includes(this.args.topic.category_id);
    }

    <template>
        {{#if this.mustShow}}
            <div class="alert alert-warning alert-disclaimer">
                <span class="text">{{htmlSafe settings.disclaimer_html}}</span>
            </div>
        {{/if}}
    </template>
}