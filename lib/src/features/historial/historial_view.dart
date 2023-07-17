import 'package:crimat_app/src/features/historial/presentation/bloc/historial_bloc/historial_bloc.dart';
import 'package:crimat_app/src/features/historial/presentation/view/widget/historial_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../models/historial/historial_model.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class HistorialView extends StatelessWidget {
  const HistorialView({
    super.key,
  });
  static const String name = 'hisorial_view';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistorialBloc, HistorialState>(
        builder: (context, state) => state.when(
              initial: () => const SizedBox(),
              loading: () => const SpinKitFadingCircle(
                color: Colors.white,
              ),
              failure: (error) => SizedBox(
                child: Text(error),
              ),
              success: (List<OrdenModel> li) {
                return CarruselListVerticalConfg(
                    title: "Tu Historial",
                    itemcount: li.length,
                    itemBuilder: (BuildContext context, int index) {
                      return HisorialCard(
                        data: li[index],
                      );
                    });
              },
            ));

    //usar la propiedad CardWidthpadding para modificar el ancho de la carta en la lista
    //   return
    // }
  }
}
