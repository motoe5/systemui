.class final enum Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
.super Ljava/lang/Enum;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WIFI_STATE_PASSPOINT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

.field public static final enum WIFI_DEFAULT:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

.field public static final enum WIFI_H:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

.field public static final enum WIFI_R:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    const-string/jumbo v1, "WIFI_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_DEFAULT:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    const-string/jumbo v1, "WIFI_R"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_R:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    const-string/jumbo v1, "WIFI_H"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_H:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    .line 285
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_DEFAULT:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_R:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->WIFI_H:Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->$VALUES:[Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    const-class v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;->$VALUES:[Lcom/android/systemui/statusbar/policy/WifiSignalController$WIFI_STATE_PASSPOINT;

    return-object v0
.end method
