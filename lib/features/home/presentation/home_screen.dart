import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fulcrum/application/utils/app_colors.dart';
import 'package:fulcrum/application/widgets/bid_items.dart';
import 'package:fulcrum/application/widgets/loader/spinner_loader.dart';
import 'package:fulcrum/application/widgets/row_item.dart';
import 'package:fulcrum/application/widgets/texts/custom_header.dart';
import 'package:fulcrum/application/widgets/texts/custom_text.dart';
import 'package:fulcrum/features/home/bloc/home_bloc.dart';
import 'package:fulcrum/features/home/bloc/home_state.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';
  static const String screenName = 'homeScreen';

  static ModalRoute<HomeScreen> route() => MaterialPageRoute<HomeScreen>(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen(),
      );

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late double width;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeBloc>().getSites();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return BlocConsumer<HomeBloc, HomeState>(
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) {
          return Scaffold(
            appBar: AppBar(
              title: const CustomHeader(
                text: 'PROPERTIES',
                fontSize: 16,
                color: AppColors.white,
              ),
              centerTitle: true,
            ),
            body: state.sites?.isEmpty == true
                ? const Center(
                    child: SpinnerLoader(
                      backgroundColor: AppColors.primary,
                    ),
                  )
                : PageView.builder(
                    itemCount: state.sites?.length ?? 0,
                    itemBuilder: (context, index) {
                      final site = state.sites?[index];
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BidItems(title: 'Winning', value: formatToCurrency(site?.winningBid ?? '0'), color: AppColors.green,),
                                BidItems(title: 'Active', value: formatToCurrency(site?.activeBid ?? '0'),),
                                BidItems(title: 'Outbid', value: formatToCurrency(site?.outbidBid ?? '0'), color: AppColors.error,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Image.network(
                              site?.image ?? '',
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child; // The actual image
                                } else {
                                  return Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color: AppColors.primary,
                                          value:
                                              loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1) : null,
                                        ),
                                      )); // Show a circular progress indicator while the image is loading
                                }
                              },
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        size: 26,
                                        color: AppColors.primaryAccent,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomHeader(
                                          text: '${site?.address.street}',
                                        ),
                                        CustomText(
                                          text: '${site?.address.city}, ${site?.address.zipCode}',
                                          fontSize: 14,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const CustomText(
                                      text: 'Reserved Price',
                                      fontSize: 14,
                                    ),
                                    CustomHeader(
                                      text: formatToCurrency(site?.reservePrice ?? '0'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              const CustomHeader(
                                text: 'Market Value',
                                fontSize: 20,
                              ),
                              CustomHeader(
                                text: formatToCurrency(site?.marketValue ?? '0'),
                                fontSize: 20,
                              ),
                            ]),
                            const SizedBox(height: 8),
                            RowItem(
                              title: 'Outbid',
                              value: '${site?.outbid}',
                              color: AppColors.error,
                            ),
                            const SizedBox(height: 8),
                            RowItem(
                              title: 'Winning',
                              value: '${site?.winning}',
                              color: AppColors.green,
                            ),
                            const SizedBox(height: 8),
                            RowItem(title: 'Active', value: '${site?.active}'),
                          ],
                        ),
                      );
                    },
                  ),
          );
        });
  }

  String formatToCurrency(String amount) {
    final number = double.tryParse(amount) ?? 0.0; // Parse string to double
    final format = NumberFormat.simpleCurrency(name: 'USD'); // USD currency format
    return format.format(number); // Return the formatted string
  }
}
