.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    .prologue
    .line 44
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_ExtensionControllerImpl$ExtensionBuilder_3061(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I
    .locals 3

    .prologue
    .local p0, "o1":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer<TT;>;"
    .local p1, "o2":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer<TT;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 89
    instance-of v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_1

    .line 90
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_0

    .line 91
    return v1

    .line 93
    :cond_0
    return v2

    .line 96
    :cond_1
    instance-of v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_4

    .line 97
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_2
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_3

    .line 100
    return v1

    .line 102
    :cond_3
    return v2

    .line 105
    :cond_4
    return v1
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .locals 2

    .prologue
    .line 88
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-get1(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    return-object v0
.end method

.method public withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-get0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    .local p1, "def":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addDefault(Ljava/util/function/Supplier;)V

    .line 75
    return-object p0
.end method

.method public withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:TT;>(",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    invoke-static {p1}, Lcom/android/systemui/plugins/PluginManager;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withPlugin(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:TT;>(",
            "Ljava/lang/Class",
            "<TP;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter",
            "<TT;TP;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    .local p3, "converter":Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;, "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter<TT;TP;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addPlugin(Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V

    .line 69
    return-object p0
.end method

.method public withTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    .local p1, "factory":Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;, "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;->keys()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;[Ljava/lang/String;)V

    .line 51
    return-object p0
.end method
