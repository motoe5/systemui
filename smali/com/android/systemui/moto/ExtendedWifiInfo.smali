.class public Lcom/android/systemui/moto/ExtendedWifiInfo;
.super Ljava/lang/Object;
.source "ExtendedWifiInfo.java"


# static fields
.field private static final EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# instance fields
.field public activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public epdgState:Z

.field public qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const-string/jumbo v1, ""

    invoke-direct {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/moto/ExtendedWifiInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/moto/ExtendedWifiInfo;->epdgState:Z

    .line 16
    sget-object v0, Lcom/android/systemui/moto/ExtendedWifiInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedWifiInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 17
    sget-object v0, Lcom/android/systemui/moto/ExtendedWifiInfo;->EMPTY_ICON_STATE:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v0, p0, Lcom/android/systemui/moto/ExtendedWifiInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 18
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "in"    # Z
    .param p3, "out"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/moto/ExtendedWifiInfo;->epdgState:Z

    .line 21
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    .line 24
    .local v0, "activity":I
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->sbWifiActivity(I)I

    move-result v2

    const-string/jumbo v3, ""

    invoke-direct {v1, p1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/moto/ExtendedWifiInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->qsWifiActivity(I)I

    move-result v2

    const-string/jumbo v3, ""

    invoke-direct {v1, p1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/moto/ExtendedWifiInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 26
    return-void

    .line 21
    .end local v0    # "activity":I
    :cond_0
    if-eqz p2, :cond_1

    .line 22
    const/4 v0, 0x1

    .restart local v0    # "activity":I
    goto :goto_0

    .end local v0    # "activity":I
    :cond_1
    if-eqz p3, :cond_2

    .line 23
    const/4 v0, 0x2

    .restart local v0    # "activity":I
    goto :goto_0

    .end local v0    # "activity":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "activity":I
    goto :goto_0
.end method
