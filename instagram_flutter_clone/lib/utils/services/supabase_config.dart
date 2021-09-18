import 'package:supabase/supabase.dart';

class SupaBaseConfig {
  final String _supabaseUrl = "https://mfnbuovgoltlmlccuqjq.supabase.co";
  final String _supabaseKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzMTk2NDUwNywiZXhwIjoxOTQ3NTQwNTA3fQ.tSC2NYs7qzZHmMl5E9nlcWI9d4jIZYoZ0wg-dPRY5-E";

  Future signUp(String email, String password) async {
    final client = SupabaseClient(_supabaseUrl, _supabaseKey);
    final response = await client.auth.signUp(email, password);
    if (response.error != null) {
      print(response.error!.message);
      return response.error!.message;
    } else {
      print(response.data.runtimeType);
      return response.data;
    }
  }
}
