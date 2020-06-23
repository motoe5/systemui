.class public Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;
.super Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneOrNoSimBooleanStat"
.end annotation


# instance fields
.field public isAirplaneModeOrNoSim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;-><init>()V

    .line 312
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 313
    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    move-object v1, p1

    .line 304
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    .line 305
    .local v1, "o":Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 306
    .local v0, "changed":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    .line 307
    return v0

    .line 305
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method
