.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 691
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 694
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V

    goto :goto_0
.end method
