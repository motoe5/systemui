.class Lcom/android/keyguard/KeyguardSecurityContainer$4;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 0
    .param p1, "securityVerified"    # Z
    .param p2, "targetUserId"    # I

    .prologue
    .line 598
    return-void
.end method

.method public reportSuccessfulRecoveryUnlockAttempt(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 593
    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "success"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    .line 590
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method
