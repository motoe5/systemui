.class Lcom/android/systemui/statusbar/policy/DateView$1;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/DateView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_policy_DateView$1_2090()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->-set0(Lcom/android/systemui/statusbar/policy/DateView;Landroid/icu/text/DateFormat;)Landroid/icu/text/DateFormat;

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_DateView$1_2169()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 51
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 52
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 53
    :cond_0
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$Lambda$Zr7OlozVJyJ9qGYEA5FYeGOG_k4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$Zr7OlozVJyJ9qGYEA5FYeGOG_k4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DateView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$Lambda$Zr7OlozVJyJ9qGYEA5FYeGOG_k4$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$Zr7OlozVJyJ9qGYEA5FYeGOG_k4$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_3
    return-void
.end method
