import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    Lifecycle.initState: _init,
    ListAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ListState> ctx) {}

void _init(Action action, Context<ListState> ctx) {
  List<ItemState> items = [
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 1, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
    ItemState(type: 0, title: "成长的社区", content: "掘金是一个帮助开发者成长的社区,是给开发者用的 Hacker News,给设计师用的 Designer News,和给产品经理用的 Medium。掘金的技术文章由稀土上聚集的技术大牛和..."),
  ];

  ctx.dispatch(ListActionCreator.onInitList(items));
}
