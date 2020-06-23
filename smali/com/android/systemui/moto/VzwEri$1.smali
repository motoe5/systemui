.class Lcom/android/systemui/moto/VzwEri$1;
.super Ljava/lang/Object;
.source "VzwEri.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/moto/VzwEri;->playEriAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/moto/VzwEri;


# direct methods
.method constructor <init>(Lcom/android/systemui/moto/VzwEri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/VzwEri;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/moto/VzwEri$1;->this$0:Lcom/android/systemui/moto/VzwEri;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 173
    invoke-static {}, Lcom/android/systemui/moto/VzwEri;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VzwEri"

    const-string/jumbo v1, "playEriAlert() onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/moto/VzwEri$1;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v0}, Lcom/android/systemui/moto/VzwEri;->-wrap0(Lcom/android/systemui/moto/VzwEri;)V

    .line 175
    return-void
.end method
