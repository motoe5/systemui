.class Lcom/android/keyguard/KeyguardSimPukView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 252
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView;->doHapticKeyClick()V

    .line 253
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->-get1(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 254
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 255
    .local v0, "count":I
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 256
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 257
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v3

    .line 260
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 267
    :cond_2
    :goto_1
    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 268
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_4

    .line 271
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 272
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 273
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-interface {v4, v6, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    .line 265
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSkippedSubId(I)V

    goto :goto_1

    .line 275
    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    if-eq v2, v4, :cond_5

    .line 276
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-interface {v4, v6, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    .line 280
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSimPukView;->reset()V

    .line 281
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v4}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    goto :goto_0
.end method
