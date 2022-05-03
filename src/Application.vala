//  Application.vala

public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.dcallana.hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow ( this ) {
            default_height = 500,
            default_width = 800,
            title = "Hello Again"
        };
        var label = new Gtk.Label ( "hell-again label" );
        main_window.add ( label );
        main_window.show_all ();
        
    }
    
    public static int main (string[] args) {
        return new MyApp ().run ( args );
    }
}

