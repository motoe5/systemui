.class Lcom/android/systemui/statusbar/policy/CastControllerImpl$3;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "CastControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 329
    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    .line 333
    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    .line 338
    return-void
.end method
