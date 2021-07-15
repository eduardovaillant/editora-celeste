import 'dart:convert';
import 'package:editora_celeste/app/variaveis.dart';
import 'package:http/http.dart' as http;

class ApiBairros {
  ApiBairros._();

  static adicionar(Map dados) async {
    try {
      http.Response response = await http.post(
        Uri.parse("${urlApi}bairro"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(dados)
      );
      if (response.body.isNotEmpty)
        return json.decode(response.body);
      else
        return {};
    } catch (e) {
      return {};
    }
  }

  static atualizar(Map dados) async {
    try {
      http.Response response = await http.put(
        Uri.parse("${urlApi}bairro/${dados['id']}"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(dados)
      );
      if (response.body.isNotEmpty)
        return json.decode(response.body);
      else
        return {};
    } catch (e) {
      return {};
    }
  }

  static deletar(int id) async {
    try {
      http.Response response = await http.delete(
        Uri.parse("${urlApi}bairro/$id"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.body.isNotEmpty)
        return json.decode(response.body);
      else
        return {};
    } catch (e) {
      return {};
    }
  }

  static listar() async {
    try {
      http.Response response = await http.get(
        Uri.parse("${urlApi}bairro"),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.body.isNotEmpty)
        return json.decode(response.body);
      else
        return {};
    } catch (e) {
      return {};
    }
  }

}
