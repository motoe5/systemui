.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/android/systemui/plugins/Plugin;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
        "<TT;>;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<TP;>;"
    }
.end annotation


# instance fields
.field private final mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter",
            "<TT;TP;>;"
        }
    .end annotation
.end field

.field private mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V
    .locals 1
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TP;>;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter",
            "<TT;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    .local p1, "this$1":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    .local p4, "converter":Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;, "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter<TT;TP;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;

    .line 166
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p2, p0, p3}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    .line 167
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 193
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 1
    .param p2, "pluginContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    .local p1, "plugin":Lcom/android/systemui/plugins/Plugin;, "TP;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mConverter:Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;->getInterfaceFromPlugin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 177
    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.PluginItem<TP;>;"
    .local p1, "plugin":Lcom/android/systemui/plugins/Plugin;, "TP;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->mItem:Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 183
    return-void
.end method
