import 'package:farmee_app/utils/colors.dart';
import 'package:farmee_app/utils/dimensions.dart';
import 'package:farmee_app/widgets/app_icon.dart';
import 'package:farmee_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class ReccommendedHarvest extends StatelessWidget {
  const ReccommendedHarvest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 75,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ]),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimensions.height30),
                child: Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20)),
                  ),
                  child: Center(
                      child: BigText(
                    size: Dimensions.font20,
                    text: 'Supermercado Veggie',
                  )),
                )),
            backgroundColor: AppColors.yellowColor,
            pinned: true,
            //floating: true,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/veggies4.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
                'Jalapeño with butternut mix Thai cauliflower burritos ginger tofu mediterranean luxury bowl Southern Italian chocolate peanut butter dip plums falafel bites lentils appetizer paprika black bean wraps delightful blueberry scones couscous tabasco pepper açai mediterranean vegetables bruschetta tofu maple orange tempeh. Cinnamon toast Mexican fiesta cozy butternut dill ginger carrot spiced juice blueberry pops earl grey latte red amazon pepper apricot salty eating together lemonade zest rich coconut cream spicy. Sweet potato black bean burrito cilantro crunchy basmati cool off lime mango crisp macadamia nut cookies ghost pepper summer spiced peppermint blast scotch bonnet pepper crunchy seaweed winter sriracha pecans red pepper Italian linguine puttanesca green onions quinoa flatbread. Almond milk chai latte miso dressing strawberry spinach salad kimchi habanero golden cherries oranges peach strawberry mango lavender lemonade cool black bean chili dip leek citrusy. Coriander sesame soba noodles mangos tomato and basil cherry bomb lemon tahini dressing elderberry zesty tofu pad thai grenadillo veggie burgers heat. Almond milk alfalfa sprouts cayenne cool cucumbers shaved almonds lemon lime minty thyme blood orange smash overflowing seasonal cashew pasta dark and stormy ultimate avocado basil pesto Thai sun pepper soup naga viper shiitake mushrooms walnut mushroom tart hazelnut shiitake crumbled lentils portobello mushrooms miso turmeric glazed aubergine bite sized pesto creamy cauliflower alfredo. Sparkling pomegranate punch hummus crispy iceberg lettuce banana bread vitamin glow red lentil curry figs spiced pumpkin chili chocolate soy milk coconut rice toasted hazelnuts. Four-layer Sicilian pistachio pesto green tea ginger lemongrass agave green tea one bowl vegan cremini mushrooms pinch of yum street style Thai basil tacos raspberries mint lime taco salsa blueberry chia seed jam Caribbean red habanero morning smoothie bowl spring parsley pine nuts roasted peanuts farro platter banh mi salad rolls chili garlic sriracha noodles. '),
          )
        ],
      ),
    );
  }
}
