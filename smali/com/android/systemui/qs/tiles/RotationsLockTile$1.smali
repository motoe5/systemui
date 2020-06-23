.class Lcom/android/systemui/qs/tiles/RotationsLockTile$1;
.super Ljava/lang/Object;
.source "RotationsLockTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationsLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationsLockTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/RotationsLockTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onRotationLockStateChanged(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "affordanceVisible"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-wrap0(Lcom/android/systemui/qs/tiles/RotationsLockTile;Ljava/lang/Object;)V

    .line 218
    return-void
.end method
