// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:flutter/src/foundation/diagnostics.dart' as prefix5;
import 'package:flutter_reflection_test/annotations/annotations.dart'
    as prefix0;
import 'package:flutter_reflection_test/components/mywidget_comp.dart'
    as prefix1;
import 'package:flutter_reflection_test/services/api.service.dart' as prefix2;
import 'package:flutter_reflection_test/services/services.dart' as prefix3;
import 'package:meta/meta.dart' as prefix4;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Widget1',
            r'.Widget1',
            134217735,
            0,
            const prefix0.Reflector(),
            const <int>[0, 1, 2, 6, 10],
            const <int>[
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23,
              6,
              7,
              8,
              9
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => ({serviceA, serviceB, serviceC, key}) => b
                  ? prefix1.Widget1(
                      key: key,
                      serviceA: serviceA,
                      serviceB: serviceB,
                      serviceC: serviceC)
                  : null
            },
            0,
            0,
            const <int>[],
            const <Object>[
              const prefix0.Component(
                  provider: const prefix0.Provider(
                      provide: prefix3.ServiceA, usefactory: prefix1.myFactory))
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'Widget2',
            r'.Widget2',
            134217735,
            1,
            const prefix0.Reflector(),
            const <int>[4, 5, 24, 27],
            const <int>[
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              28,
              24,
              25,
              26
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => ({key, serviceA, serviceB}) => b
                  ? prefix1.Widget2(
                      key: key, serviceA: serviceA, serviceB: serviceB)
                  : null
            },
            0,
            1,
            const <int>[],
            const <Object>[const prefix0.Component()],
            null),
        r.NonGenericClassMirrorImpl(
            r'ApiService',
            r'.ApiService',
            134217735,
            2,
            const prefix0.Reflector(),
            const <int>[29, 30],
            const <int>[31, 32, 13, 33, 15, 29],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.ApiService() : null},
            1,
            2,
            const <int>[],
            const <Object>[const prefix0.Injectable(name: 'local-ApiService')],
            null),
        r.NonGenericClassMirrorImpl(
            r'ApiServiceProd',
            r'.ApiServiceProd',
            134217735,
            3,
            const prefix0.Reflector(),
            const <int>[34, 35],
            const <int>[31, 32, 13, 33, 15, 34],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.ApiServiceProd() : null},
            1,
            3,
            const <int>[],
            const <Object>[const prefix0.Injectable(name: 'prod-ApiService')],
            null),
        r.NonGenericClassMirrorImpl(
            r'ServiceA',
            r'.ServiceA',
            134217735,
            4,
            const prefix0.Reflector(),
            const <int>[36, 37, 38],
            const <int>[31, 32, 13, 33, 15, 36, 37],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix3.ServiceA() : null},
            2,
            4,
            const <int>[],
            const <Object>[
              const prefix0.Injectable(
                  name: 'ServiceA',
                  provider: const prefix0.Provider(
                      provide: prefix3.ServiceA, useClass: prefix3.ServiceB))
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'ServiceB',
            r'.ServiceB',
            134217735,
            5,
            const prefix0.Reflector(),
            const <int>[39, 40],
            const <int>[31, 32, 13, 33, 15, 39],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix3.ServiceB() : null},
            2,
            5,
            const <int>[],
            const <Object>[const prefix0.Injectable(name: 'ServiceB')],
            null),
        r.NonGenericClassMirrorImpl(
            r'ServiceC',
            r'.ServiceC',
            134217735,
            6,
            const prefix0.Reflector(),
            const <int>[41, 42],
            const <int>[31, 32, 13, 33, 15, 41],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix3.ServiceC() : null},
            2,
            6,
            const <int>[],
            const <Object>[const prefix0.Injectable(name: 'ServiceC')],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'serviceA', 134349829, 0,
            const prefix0.Reflector(), 4, -1, -1, null, const []),
        r.VariableMirrorImpl(r'serviceB', 134349829, 0,
            const prefix0.Reflector(), 5, -1, -1, null, const []),
        r.VariableMirrorImpl(r'serviceC', 134349829, 0,
            const prefix0.Reflector(), 6, -1, -1, null, const []),
        r.VariableMirrorImpl(r'key', 67240965, -1, const prefix0.Reflector(),
            -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'serviceA', 134349829, 1,
            const prefix0.Reflector(), 4, -1, -1, null, const []),
        r.VariableMirrorImpl(r'serviceB', 134349829, 1,
            const prefix0.Reflector(), 5, -1, -1, null, const []),
        r.MethodMirrorImpl(
            r'build',
            2097154,
            0,
            -1,
            -1,
            -1,
            null,
            const <int>[0],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 0, 7),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 1, 8),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 2, 9),
        r.MethodMirrorImpl(r'', 128, 0, -1, -1, -1, null,
            const <int>[1, 2, 3, 4], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'==',
            2097154,
            -1,
            -1,
            -1,
            -1,
            null,
            const <int>[5],
            const prefix0.Reflector(),
            const <Object>[override, prefix4.nonVirtual]),
        r.MethodMirrorImpl(
            r'toString',
            2097154,
            -1,
            -1,
            -1,
            -1,
            null,
            const <int>[6],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(r'noSuchMethod', 524290, -1, -1, -1, -1, null,
            const <int>[7], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'hashCode',
            2097155,
            -1,
            -1,
            -1,
            -1,
            null,
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[override, prefix4.nonVirtual]),
        r.MethodMirrorImpl(r'runtimeType', 2097155, -1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toStringShort', 2097154, -1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(
            r'toDiagnosticsNode',
            2097154,
            -1,
            -1,
            -1,
            -1,
            null,
            const <int>[8, 9],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'debugFillProperties',
            1310722,
            -1,
            -1,
            -1,
            -1,
            null,
            const <int>[10],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(r'toStringShallow', 2097154, -1, -1, -1, -1, null,
            const <int>[11, 12], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toStringDeep', 2097154, -1, -1, -1, -1, null,
            const <int>[13, 14, 15], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'debugDescribeChildren',
            35651586,
            -1,
            -1,
            -1,
            -1,
            null,
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix4.protected]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 3, 22),
        r.MethodMirrorImpl(r'createElement', 2097154, -1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(r'createState', 35651586, 1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 4, 25),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 5, 26),
        r.MethodMirrorImpl(r'', 128, 1, -1, -1, -1, null,
            const <int>[16, 17, 18], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'createElement', 2097154, -1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(r'handle', 1310722, 2, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 64, 2, -1, -1, -1, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'==', 2097154, -1, -1, -1, -1, null,
            const <int>[19], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toString', 2097154, -1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 2097155, -1, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'handle', 1310722, 3, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 64, 3, -1, -1, -1, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'getText', 2097154, 4, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'getCount', 2097154, 4, -1, -1, -1, null,
            const <int>[20], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'', 128, 4, -1, -1, -1, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'getText', 2097154, 5, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'', 64, 5, -1, -1, -1, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'getText', 2097154, 6, -1, -1, -1, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'', 64, 6, -1, -1, -1, null, const <int>[],
            const prefix0.Reflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'context', 134348806, 6,
            const prefix0.Reflector(), -1, -1, -1, null, const [], null, null),
        r.ParameterMirrorImpl(
            r'serviceA',
            134358022,
            10,
            const prefix0.Reflector(),
            4,
            -1,
            -1,
            null,
            const [],
            null,
            #serviceA),
        r.ParameterMirrorImpl(
            r'serviceB',
            134358022,
            10,
            const prefix0.Reflector(),
            5,
            -1,
            -1,
            null,
            const [],
            null,
            #serviceB),
        r.ParameterMirrorImpl(
            r'serviceC',
            134358022,
            10,
            const prefix0.Reflector(),
            6,
            -1,
            -1,
            null,
            const [],
            null,
            #serviceC),
        r.ParameterMirrorImpl(r'key', 67253254, 10, const prefix0.Reflector(),
            -1, -1, -1, null, const [], null, #key),
        r.ParameterMirrorImpl(r'other', 134348806, 11,
            const prefix0.Reflector(), -1, -1, -1, null, const [], null, null),
        r.ParameterMirrorImpl(
            r'minLevel',
            134363142,
            12,
            const prefix0.Reflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix5.DiagnosticLevel.info,
            #minLevel),
        r.ParameterMirrorImpl(r'invocation', 134348806, 13,
            const prefix0.Reflector(), -1, -1, -1, null, const [], null, null),
        r.ParameterMirrorImpl(r'name', 67252230, 17, const prefix0.Reflector(),
            -1, -1, -1, null, const [], null, #name),
        r.ParameterMirrorImpl(r'style', 67252230, 17, const prefix0.Reflector(),
            -1, -1, -1, null, const [], null, #style),
        r.ParameterMirrorImpl(r'properties', 134348806, 18,
            const prefix0.Reflector(), -1, -1, -1, null, const [], null, null),
        r.ParameterMirrorImpl(
            r'joiner',
            134363142,
            19,
            const prefix0.Reflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            ', ',
            #joiner),
        r.ParameterMirrorImpl(
            r'minLevel',
            134363142,
            19,
            const prefix0.Reflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix5.DiagnosticLevel.debug,
            #minLevel),
        r.ParameterMirrorImpl(
            r'prefixLineOne',
            134363142,
            20,
            const prefix0.Reflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            '',
            #prefixLineOne),
        r.ParameterMirrorImpl(
            r'prefixOtherLines',
            67252230,
            20,
            const prefix0.Reflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            null,
            #prefixOtherLines),
        r.ParameterMirrorImpl(
            r'minLevel',
            134363142,
            20,
            const prefix0.Reflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix5.DiagnosticLevel.debug,
            #minLevel),
        r.ParameterMirrorImpl(r'key', 67252230, 27, const prefix0.Reflector(),
            -1, -1, -1, null, const [], null, #key),
        r.ParameterMirrorImpl(
            r'serviceA',
            134358022,
            27,
            const prefix0.Reflector(),
            4,
            -1,
            -1,
            null,
            const [],
            null,
            #serviceA),
        r.ParameterMirrorImpl(
            r'serviceB',
            134358022,
            27,
            const prefix0.Reflector(),
            5,
            -1,
            -1,
            null,
            const [],
            null,
            #serviceB),
        r.ParameterMirrorImpl(r'other', 134348806, 31,
            const prefix0.Reflector(), -1, -1, -1, null, const [], null, null),
        r.ParameterMirrorImpl(r'i', 134348806, 37, const prefix0.Reflector(),
            -1, -1, -1, null, const [], null, null)
      ],
      <Type>[
        prefix1.Widget1,
        prefix1.Widget2,
        prefix2.ApiService,
        prefix2.ApiServiceProd,
        prefix3.ServiceA,
        prefix3.ServiceB,
        prefix3.ServiceC
      ],
      7,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'toStringShort': (dynamic instance) => instance.toStringShort,
        r'toDiagnosticsNode': (dynamic instance) => instance.toDiagnosticsNode,
        r'debugFillProperties': (dynamic instance) =>
            instance.debugFillProperties,
        r'toStringShallow': (dynamic instance) => instance.toStringShallow,
        r'toStringDeep': (dynamic instance) => instance.toStringDeep,
        r'debugDescribeChildren': (dynamic instance) =>
            instance.debugDescribeChildren,
        r'key': (dynamic instance) => instance.key,
        r'createElement': (dynamic instance) => instance.createElement,
        r'build': (dynamic instance) => instance.build,
        r'serviceA': (dynamic instance) => instance.serviceA,
        r'serviceB': (dynamic instance) => instance.serviceB,
        r'serviceC': (dynamic instance) => instance.serviceC,
        r'createState': (dynamic instance) => instance.createState,
        r'handle': (dynamic instance) => instance.handle,
        r'getText': (dynamic instance) => instance.getText,
        r'getCount': (dynamic instance) => instance.getCount
      },
      {},
      <m.LibraryMirror>[
        r.LibraryMirrorImpl(r'', Uri.parse(r'reflectable://0/'),
            const prefix0.Reflector(), const <int>[], {}, {}, const [], null),
        r.LibraryMirrorImpl(r'', Uri.parse(r'reflectable://1/'),
            const prefix0.Reflector(), const <int>[], {}, {}, const [], null),
        r.LibraryMirrorImpl(r'', Uri.parse(r'reflectable://2/'),
            const prefix0.Reflector(), const <int>[], {}, {}, const [], null)
      ],
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
