.class public interface abstract Lcom/android/systemui/plugins/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# virtual methods
.method public getVersion()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "sysuiContext"    # Landroid/content/Context;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 125
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
