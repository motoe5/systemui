.class Lcom/android/keyguard/KeyguardSimPinView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$3;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$3;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardSimPinView$3;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 393
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPinView;->-get2(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPinView;->-get2(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 397
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-eqz v3, :cond_1

    move v0, v1

    .line 396
    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    .line 398
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-nez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 400
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPinView;->-get3(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v2

    .line 399
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardSimPinView;->-set0(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 428
    return-void

    .line 403
    :cond_2
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-ne v0, v1, :cond_4

    .line 404
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 408
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->-wrap0(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v1

    .line 407
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->-wrap2(Lcom/android/keyguard/KeyguardSimPinView;Landroid/app/Dialog;)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 414
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->-wrap1(Lcom/android/keyguard/KeyguardSimPinView;I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 420
    const v2, 0x7f1102ab

    .line 419
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
