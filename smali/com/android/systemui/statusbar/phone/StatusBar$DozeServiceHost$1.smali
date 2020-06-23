.class Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 5685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 5687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5688
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "AoD died, The dozing state need to be cleared."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->stopDozing()V

    .line 5691
    :cond_0
    return-void
.end method
