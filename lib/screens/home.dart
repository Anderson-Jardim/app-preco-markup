import 'package:flutter/material.dart';
import '../adsense/adsense.dart';
import '../style/buttons.dart';
import '../style/calculation_result.dart';
import '../style/drawer.dart';
import '../style/textfield.dart';
import '../style/textfield_percent.dart';

class Home extends StatefulWidget {
  Home({key});

  @override
  State<Home> createState() => _InputTextState();
}

class _InputTextState extends State<Home> {
  String meuPreco = "R\$ 0,00";
  String meuLucro = "R\$ 0,00";
  TextEditingController precoCusto = TextEditingController();
  TextEditingController lucroDesejado = TextEditingController();
  TextEditingController custosFixos = TextEditingController();
  TextEditingController custosVariaveis = TextEditingController();

  void _calcular() {
    num pCusto = num.parse(precoCusto.text);
    num lDesejado = num.parse(lucroDesejado.text);
    num cFixos = num.parse(custosFixos.text);
    num cVariaveis = num.parse(custosVariaveis.text);

// Calculo MarkUp
    num mk1 = lDesejado + cFixos + cVariaveis;
    num mk2 = 100 - mk1;
    num mk3 = 100 / mk2;
    num pv = pCusto * mk3;
    String precoFinal = pv.toStringAsFixed(2);
// Calculo Margem de Contribuição
    num mc = pv * lDesejado / 100;
    String margemFinal = mc.toStringAsFixed(2);

    setState(() {
      meuPreco = "R\$ $precoFinal";
      meuLucro = "R\$ $margemFinal";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ShowDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                InputTextfield(
                  texto: "Preço Custo R\$",
                  c: precoCusto,
                  textoFixo: "R\$ ",
                ),
                InputTextfieldPercent(
                  texto: "Custos Fixos %",
                  c: custosFixos,
                  textoFixo: "%",
                ),
                InputTextfieldPercent(
                  texto: "Custos Variáveis %",
                  c: custosVariaveis,
                  textoFixo: "%",
                ),
                InputTextfieldPercent(
                  texto: "Lucro Desejado %",
                  c: lucroDesejado,
                  textoFixo: "%",
                ),
                const SizedBox(
                  height: 20,
                ),
                CalculationResult(
                  texto: "Meu Preço:",
                  numero: meuPreco,
                  texto2: "Meu Lucro:",
                  numero2: meuLucro,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons(
                        onTap: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/',
                          (_) => false,
                        ),
                        iconn: const Icon(Icons.close),
                        colorButtom: const Color(0xFFF44336),
                      ),
                      Buttons(
                        onTap: _calcular,
                        iconn: const Icon(Icons.check),
                        colorButtom: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: AdSense(adScreen: AdSense.homeScreen),
          ),
        ],
      ),
    );
  }
}
