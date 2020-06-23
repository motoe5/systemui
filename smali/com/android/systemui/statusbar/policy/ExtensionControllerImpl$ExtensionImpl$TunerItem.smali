.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TunerItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
        "<TT;>;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;"
    }
.end annotation


# instance fields
.field private final mFactory:Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory",
            "<TT;>;"
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

.field private final mSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;


# direct methods
.method public varargs constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;[Ljava/lang/String;)V
    .locals 1
    .param p3, "setting"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.TunerItem<TT;>;"
    .local p1, "this$1":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>;"
    .local p2, "factory":Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;, "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory<TT;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mSettings:Landroid/util/ArrayMap;

    .line 202
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mFactory:Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;

    .line 203
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0, p3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 204
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.TunerItem<TT;>;"
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 214
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
    .line 208
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.TunerItem<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 218
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.TunerItem<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mFactory:Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mSettings:Landroid/util/ArrayMap;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;->create(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->mItem:Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 221
    return-void
.end method
