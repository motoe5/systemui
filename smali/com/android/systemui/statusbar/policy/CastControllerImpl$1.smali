.class Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "CastControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 290
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    .line 297
    :cond_0
    return-void
.end method
