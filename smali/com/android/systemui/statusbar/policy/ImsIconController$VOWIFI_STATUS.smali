.class final enum Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
.super Ljava/lang/Enum;
.source "ImsIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ImsIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VOWIFI_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

.field public static final enum VOWIFI_NOT_READY:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

.field public static final enum VOWIFI_REGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

.field public static final enum VOWIFI_UNREGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    const-string/jumbo v1, "VOWIFI_REGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_REGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    const-string/jumbo v1, "VOWIFI_NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_NOT_READY:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    const-string/jumbo v1, "VOWIFI_UNREGISTERED"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_UNREGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    sget-object v1, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_REGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_NOT_READY:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->VOWIFI_UNREGISTERED:Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->$VALUES:[Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;->$VALUES:[Lcom/android/systemui/statusbar/policy/ImsIconController$VOWIFI_STATUS;

    return-object v0
.end method
