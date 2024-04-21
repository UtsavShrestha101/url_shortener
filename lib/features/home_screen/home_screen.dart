import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:myapp/core/common/widgets/primary_button.dart';
import 'package:myapp/core/dependency_injection/dl.dart';
import 'package:myapp/core/entension/context_extension.dart';
import 'package:myapp/core/services/restapi/enum.dart';
import 'package:myapp/features/home_screen/cubit/home_cubit.dart';
import 'package:qr_flutter/qr_flutter.dart';

@RoutePage()
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final urlController = TextEditingController();
  final _formKey = GlobalKey<FormBuilderState>();
  bool get isValid => _formKey.currentState!.saveAndValidate();
  Map<String, dynamic> get value => _formKey.currentState!.value;
  @override
  void dispose() {
    urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => get<HomeCubit>(),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state.status == ApiRequestStates.error) {
              context.showSnackBar("Error occured");
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    FormBuilderTextField(
                      controller: urlController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      name: 'url',
                      decoration: const InputDecoration(
                        labelText: 'Please enter a url',
                      ),
                      keyboardType: TextInputType.name,
                      validator: FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.required(
                              errorText: 'Please enter an url'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: PrimaryButton(
                        isLoading: state.status == ApiRequestStates.loading,
                        onPressed: () {
                          context.read<HomeCubit>().search(urlController.text);
                        },
                        text: "Submit",
                      ),
                    ),
                    if (state.generatedUrl != "") ...[
                      const SizedBox(
                        height: 15,
                      ),
                      Text("Shortened link: ${state.generatedUrl}"),
                      QrImageView(
                        data: state.generatedUrl,
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                    ]
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
