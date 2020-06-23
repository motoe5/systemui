.class Lcom/android/keyguard/KeyguardAbsKeyInputView$1;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 185
    const/4 v1, 0x4

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public onChecked(ZI)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 169
    const/4 v1, 0x4

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 173
    if-nez p1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 177
    :cond_1
    return-void
.end method

.method public onEarlyMatched()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-get0(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 159
    const/4 v1, 0x3

    .line 158
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 163
    return-void
.end method
