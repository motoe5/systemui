.class Lcom/android/systemui/qs/tiles/WifiTile$3;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile;->showWarningDialogIfNeeded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$3;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    .line 542
    return-void
.end method
