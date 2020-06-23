.class public Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;
.super Ljava/lang/Object;
.source "CarrierIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTypeGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;
    }
.end annotation


# instance fields
.field private qs:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

.field private sb:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-direct {v0, v1}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->sb:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .line 188
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-direct {v0, v1}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->qs:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V
    .locals 0
    .param p1, "sb"    # Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;
    .param p2, "qs"    # Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->sb:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .line 193
    iput-object p2, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->qs:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .line 194
    return-void
.end method


# virtual methods
.method public qsData(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->qs:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->-get0(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I

    move-result v0

    return v0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->qs:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->-get2(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I

    move-result v0

    return v0

    .line 216
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->qs:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->-get1(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I

    move-result v0

    return v0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sbData(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->sb:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->-get0(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I

    move-result v0

    return v0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->sb:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->-get2(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I

    move-result v0

    return v0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;->sb:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->-get1(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I

    move-result v0

    return v0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
