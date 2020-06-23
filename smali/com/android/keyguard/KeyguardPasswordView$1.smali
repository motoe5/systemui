.class Lcom/android/keyguard/KeyguardPasswordView$1;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->showSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get1(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get1(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get2(Lcom/android/keyguard/KeyguardPasswordView;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get3(Lcom/android/keyguard/KeyguardPasswordView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 126
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPasswordView;->-get1(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 133
    :cond_1
    return-void
.end method
