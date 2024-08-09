import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/core.dart';
import '../../../../features.dart';

class PetInfoWidget extends StatefulWidget {
  final PetEntity petEntity;
  const PetInfoWidget({
    super.key,
    required this.petEntity,
  });

  @override
  State<PetInfoWidget> createState() => _PetInfoWidgetState();
}

class _PetInfoWidgetState extends State<PetInfoWidget> {
  final homeStore = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 96,
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              // child: Image.network(petEntity.imageUrl),
              child: Image.asset('assets/images/pet_image.png'),
            ),
          ),
          InkWell(
            splashColor: AppPallette.transparentColor,
            onTap: () {
              homeStore.showOrHidePetDetails();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        // petEntity.name,
                        'Max',
                        style: AppStyle.boldTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SvgPicture.asset(
                          height: 16,
                          width: 16,
                          'assets/icons/male-gender.svg',
                        ),
                      ),
                      Observer(
                        builder: (_) => Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Transform.rotate(
                            angle: homeStore.showPetDetails
                                ? 0
                                : 4.78,
                            child: SvgPicture.asset(
                              'assets/icons/arrow-down.svg',
                              height: 6.56,
                              width: 11.16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    // petEntity.breed,
                    'Buldogue francês',
                    style: AppStyle.regularTextStyle.copyWith(
                      color: AppPallette.secondaryTextColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                height: 18.28,
                width: 18.25,
                'assets/icons/edit-icon.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
