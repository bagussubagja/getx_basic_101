class ApiEndpoints {
  static final String baseUrl = 'https://tzufskmukstybbiabxio.supabase.co/auth/v1/';
  static final String baseDatabaseUrl = 'https://tzufskmukstybbiabxio.supabase.co/rest/v1/notes?';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String getNoteUrl = 'https://tzufskmukstybbiabxio.supabase.co/rest/v1/notes?select=*&apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR6dWZza211a3N0eWJiaWFieGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzIzMjMwMTAsImV4cCI6MTk4Nzg5OTAxMH0.l_cyVviXhSJAY6GB3Kk0dDdXux5gr0ajm6vNstIcQfI';
  final String registerEmail = 'signup';
  final String loginEmail = 'token?grant_type=password';
  final String apiKeyLogin = '&apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR6dWZza211a3N0eWJiaWFieGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzIzMjMwMTAsImV4cCI6MTk4Nzg5OTAxMH0.l_cyVviXhSJAY6GB3Kk0dDdXux5gr0ajm6vNstIcQfI';
  final String apiKeyRegister = '?apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR6dWZza211a3N0eWJiaWFieGlvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzIzMjMwMTAsImV4cCI6MTk4Nzg5OTAxMH0.l_cyVviXhSJAY6GB3Kk0dDdXux5gr0ajm6vNstIcQfI';
}
