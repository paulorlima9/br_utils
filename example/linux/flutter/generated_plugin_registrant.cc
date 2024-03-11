//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <br_utils/br_utils_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) br_utils_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "br_utils_plugin");
  br_utils_plugin_register_with_registrar(br_utils_registrar);
}
