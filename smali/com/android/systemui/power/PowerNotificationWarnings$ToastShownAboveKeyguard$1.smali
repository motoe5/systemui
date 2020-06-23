.class Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->-get0(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->-get1(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->-get0(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;

    invoke-static {v0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;->-set0(Lcom/android/systemui/power/PowerNotificationWarnings$ToastShownAboveKeyguard;Landroid/view/View;)Landroid/view/View;

    .line 561
    :cond_0
    return-void
.end method
