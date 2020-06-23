.class final enum Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;
.super Ljava/lang/Enum;
.source "ModBatteryTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ModBatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RemoteState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

.field public static final enum Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

.field public static final enum ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

.field public static final enum ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

.field public static final enum Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    const-string/jumbo v1, "Attaching"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    .line 173
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    const-string/jumbo v1, "Detaching"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    .line 174
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    const-string/jumbo v1, "ChargeEnabling"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    .line 175
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    const-string/jumbo v1, "ChargeDisabling"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->$VALUES:[Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->$VALUES:[Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    return-object v0
.end method
