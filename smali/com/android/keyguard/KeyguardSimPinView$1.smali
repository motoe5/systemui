.class Lcom/android/keyguard/KeyguardSimPinView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinView;->-get3(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 70
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 75
    :cond_0
    return-void

    .line 76
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinView;->-get0(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 80
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockedSimCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 82
    return-void

    .line 87
    .end local v0    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    .line 88
    return-void
.end method
