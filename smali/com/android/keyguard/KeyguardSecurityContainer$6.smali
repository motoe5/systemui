.class Lcom/android/keyguard/KeyguardSecurityContainer$6;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic val$v:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/media/MediaPlayer;Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->val$mediaPlayer:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->val$v:Landroid/os/Vibrator;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->-wrap1(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/media/MediaPlayer;)V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get1(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get5(Lcom/android/keyguard/KeyguardSecurityContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$6;->val$v:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 258
    return-void
.end method
