.class Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get0(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 89
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 90
    return-void
.end method
