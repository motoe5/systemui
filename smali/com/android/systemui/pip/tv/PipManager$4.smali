.class Lcom/android/systemui/pip/tv/PipManager$4;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$4;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$4;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipManager;->-wrap6(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V

    .line 166
    return-void
.end method
