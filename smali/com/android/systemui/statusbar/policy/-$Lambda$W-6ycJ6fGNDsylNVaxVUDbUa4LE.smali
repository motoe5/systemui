.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->lambda$-com_android_systemui_statusbar_policy_ExtensionControllerImpl$ExtensionBuilder_3061(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
