.class Lcom/android/systemui/statusbar/phone/AutoTileManager$4;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private addNightTile()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    const-string/jumbo v1, "night"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QsNightDisplayAdded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$TkQS9JwI9bZlvLqtI6ZgzsrKRiU;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$TkQS9JwI9bZlvLqtI6ZgzsrKRiU;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_AutoTileManager$4_7860()V
    .locals 2

    .prologue
    .line 188
    const-class v0, Lcom/android/internal/app/NightDisplayController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/NightDisplayController;

    .line 189
    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->addNightTile()V

    .line 175
    :cond_0
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 1
    .param p1, "autoMode"    # I

    .prologue
    .line 179
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 180
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->addNightTile()V

    .line 183
    :cond_1
    return-void
.end method
