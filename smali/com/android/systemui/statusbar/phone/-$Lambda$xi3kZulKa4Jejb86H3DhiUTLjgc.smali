.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_8718(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
