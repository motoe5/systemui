.class Lcom/android/systemui/tuner/NfcIconSwitch$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcIconSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/NfcIconSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/NfcIconSwitch;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NfcIconSwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/NfcIconSwitch;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/NfcIconSwitch$1;->this$0:Lcom/android/systemui/tuner/NfcIconSwitch;

    .line 29
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
    .line 32
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/systemui/tuner/NfcIconSwitch$1;->this$0:Lcom/android/systemui/tuner/NfcIconSwitch;

    invoke-static {v0}, Lcom/android/systemui/tuner/NfcIconSwitch;->-wrap0(Lcom/android/systemui/tuner/NfcIconSwitch;)V

    .line 35
    :cond_0
    return-void
.end method
