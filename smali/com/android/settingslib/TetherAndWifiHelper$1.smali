.class Lcom/android/settingslib/TetherAndWifiHelper$1;
.super Ljava/lang/Object;
.source "TetherAndWifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/TetherAndWifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/TetherAndWifiHelper;


# direct methods
.method constructor <init>(Lcom/android/settingslib/TetherAndWifiHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/TetherAndWifiHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settingslib/TetherAndWifiHelper$1;->this$0:Lcom/android/settingslib/TetherAndWifiHelper;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper$1;->this$0:Lcom/android/settingslib/TetherAndWifiHelper;

    invoke-static {v0}, Lcom/android/settingslib/TetherAndWifiHelper;->-wrap0(Lcom/android/settingslib/TetherAndWifiHelper;)V

    .line 50
    return-void
.end method
