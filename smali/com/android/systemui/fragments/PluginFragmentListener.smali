.class public Lcom/android/systemui/fragments/PluginFragmentListener;
.super Ljava/lang/Object;
.source "PluginFragmentListener.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpectedInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/plugins/FragmentBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field private final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/plugins/FragmentBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "defaultFragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    .local p4, "expectedInterface":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/plugins/FragmentBase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mTag:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 42
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    iput-object v0, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mExpectedInterface:Ljava/lang/Class;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mDefaultClass:Ljava/lang/Class;

    .line 45
    return-void
.end method


# virtual methods
.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 4
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mExpectedInterface:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Landroid/app/Fragment;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getPluginManager()Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mTag:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v1, v2, v3, p2}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->setCurrentPlugin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "PluginFragmentListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be a Fragment and implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mExpectedInterface:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 4
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getPluginManager()Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mTag:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mDefaultClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->removePlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public startListening()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/systemui/fragments/PluginFragmentListener;->mExpectedInterface:Ljava/lang/Class;

    .line 49
    const/4 v2, 0x0

    .line 48
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 50
    return-void
.end method
