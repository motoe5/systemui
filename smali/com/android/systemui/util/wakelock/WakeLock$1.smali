.class final Lcom/android/systemui/util/wakelock/WakeLock$1;
.super Ljava/lang/Object;
.source "WakeLock.java"

# interfaces
.implements Lcom/android/systemui/util/wakelock/WakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/android/systemui/util/wakelock/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inner:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 50
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 55
    return-void
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLock$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
