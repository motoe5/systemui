.class Lcom/android/keyguard/KeyguardMessageArea$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 54
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$1;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 57
    return-void
.end method
