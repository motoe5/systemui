.class Lcom/android/systemui/statusbar/phone/AutoTileManager$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_AutoTileManager$1_5842()V
    .locals 2

    .prologue
    .line 131
    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get6(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    move-result-object v1

    .line 131
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onManagedProfileChanged()V
    .locals 3

    .prologue
    .line 128
    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QsWorkAdded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$TkQS9JwI9bZlvLqtI6ZgzsrKRiU$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$TkQS9JwI9bZlvLqtI6ZgzsrKRiU$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_0
    return-void
.end method

.method public onManagedProfileRemoved()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
